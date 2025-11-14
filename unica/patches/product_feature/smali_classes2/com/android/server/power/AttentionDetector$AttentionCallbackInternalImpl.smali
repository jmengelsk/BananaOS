.class final Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;
.super Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mId:I

.field public final synthetic this$0:Lcom/android/server/power/AttentionDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/power/AttentionDetector;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-direct {p0}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;-><init>()V

    iput p2, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->mId:I

    return-void
.end method


# virtual methods
.method public final onFailure(I)V
    .locals 2

    const-string v0, "Failed to check attention: "

    const-string v1, ", ID: "

    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->mId:I

    const-string v1, "AttentionDetector"

    invoke-static {p1, v0, v1}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    iget-object p0, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final onSuccess(IJ)V
    .locals 1

    const-string p2, "AttentionDetector"

    const-string/jumbo p3, "onSuccess: "

    const-string v0, ", ID: "

    invoke-static {p1, p3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v0, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->mId:I

    invoke-static {p3, v0, p2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p2, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->mId:I

    iget-object p3, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    iget v0, p3, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    if-ne p2, v0, :cond_2

    iget-object p2, p3, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    iget-object p2, p2, Lcom/android/server/power/AttentionDetector;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    iget p3, p0, Lcom/android/server/power/AttentionDetector;->mWakefulness:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/server/power/AttentionDetector;->mOnUserAttention:Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda1;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda1;->run()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->resetConsecutiveExtensionCount()V

    :goto_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return-void
.end method
