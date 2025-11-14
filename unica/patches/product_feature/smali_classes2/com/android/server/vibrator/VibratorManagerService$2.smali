.class public final Lcom/android/server/vibrator/VibratorManagerService$2;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$2;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onOpChanged(ILjava/lang/String;)V
    .locals 1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$2;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object p1, p1, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$2;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    new-instance p2, Lcom/android/server/vibrator/VibratorManagerService$1$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibratorManagerService;I)V

    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-static {p0, p2, v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mmaybeClearCurrentAndNextSessionsLocked(Lcom/android/server/vibrator/VibratorManagerService;Ljava/util/function/Predicate;Lcom/android/server/vibrator/VibrationSession$Status;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
