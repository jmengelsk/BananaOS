.class public final synthetic Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

.field public final synthetic f$1:Lcom/android/server/utils/quota/Uptc;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;Lcom/android/server/utils/quota/Uptc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    iput-object p2, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/utils/quota/Uptc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    iget-object p0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/utils/quota/Uptc;

    iget-object v0, v0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    iget v1, p0, Lcom/android/server/utils/quota/Uptc;->userId:I

    iget-object v2, p0, Lcom/android/server/utils/quota/Uptc;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/utils/quota/Uptc;->tag:Ljava/lang/String;

    check-cast v0, Lcom/android/server/utils/quota/CountQuotaTracker;

    iget-object v3, v0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/utils/quota/CountQuotaTracker;->maybeUpdateStatusForUptcLocked(ILjava/lang/String;Ljava/lang/String;)V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
